require 'sparql/client'

class SearchController < ApplicationController
  helper_method [:players]

  def index
  end

  def players
    client.query(query).limit(100) if params[:name_search].present?
  end

  private

  def client
    @client ||= SPARQL::Client.new("https://dbpedia.org/sparql")
  end

  def query
    qry = <<-QUERY
		PREFIX dbo: <http://dbpedia.org/ontology/>

		SELECT distinct ?soccerplayer, ?thumbnail, ?abstract
		{ 
		?soccerplayer a dbo:SoccerPlayer ;
		   dbo:abstract ?abstract.
		   OPTIONAL { ?soccerplayer dbo:thumbnail ?thumbnail }.
		FILTER(LANGMATCHES(LANG(?abstract), "pt")) .
		#{search_query}
		} order by ?soccerplayer
    QUERY
  end

  def search_query
    return "" unless params[:name_search].present?

	params[:name_search].gsub! ' ', '_'
    "FILTER regex(str(?soccerplayer), '#{params[:name_search]}', 'i')"
  end
end
