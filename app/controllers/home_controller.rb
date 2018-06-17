require 'sparql/client'

class HomeController < ApplicationController

  helper_method [:players]
  def index
  end

  def players
    client.query(query).limit(100) if params[:position].present? || params[:country].present? || params[:team].present?
  end

  private

  def client
    @client ||= SPARQL::Client.new("https://dbpedia.org/sparql")
  end

  def query
    qry = <<-QUERY
      PREFIX dbo: <http://dbpedia.org/ontology/>

      SELECT distinct ?soccerplayer, ?thumbnail
      { 
      ?soccerplayer a dbo:SoccerPlayer ;
         dbo:position ?position;
         dbo:birthPlace/dbo:country* ?countryOfBirth ;
         dbo:team ?team .
         OPTIONAL { ?soccerplayer dbo:thumbnail ?thumbnail }.
      #{country_query}
      #{position_query}
      #{team_query}
      } order by ?soccerplayer
    QUERY
  end

  def country_query
    return "" unless params[:country].present?

    "FILTER (?countryOfBirth = #{params[:country]})"
  end

  def position_query
    return "" unless params[:position].present?     

    case params[:position]          
      when "atacante"
        "FILTER (?position = <http://dbpedia.org/resource/Forward_(association_football)>
                  || ?position = <http://dbpedia.org/resource/Striker_(association_football)>
                  || ?position = <http://dbpedia.org/resource/Centre_forward>
                  || ?position = <http://dbpedia.org/resource/Striker_(football)>
                  || ?position = <http://dbpedia.org/resource/Forward_(football)>)"
      when "meio"   
        "FILTER (?position = <http://dbpedia.org/resource/Midfielder>
                  || ?position = <http://dbpedia.org/resource/Midfield>
                  || ?position = <http://dbpedia.org/resource/Left_midfielder>
                  || ?position = <http://dbpedia.org/resource/Right_Midfielder>
                  || ?position = <http://dbpedia.org/resource/Attacking_Midfielder>
                  || ?position = <http://dbpedia.org/resource/Midfielder_(football)>
                  || ?position = <http://dbpedia.org/resource/Midfielder_(association_football)>
                  || ?position = <http://dbpedia.org/resource/Defensive_midfielder>)"
      when "defensor"       
        "FILTER (?position = <http://dbpedia.org/resource/Defender_(association_football)>
                  || ?position = <http://dbpedia.org/resource/Right_Back>
                  || ?position = <http://dbpedia.org/resource/Left_back>
                  || ?position = <http://dbpedia.org/resource/Defender_(soccer)>
                  || ?position = <http://dbpedia.org/resource/Full_back_(association_football)>
                  || ?position = <http://dbpedia.org/resource/Center-back>
                  || ?position = <http://dbpedia.org/page/Defender_(association_football)>
                  || ?position = <http://dbpedia.org/resource/Central_back>
                  || ?position = <http://dbpedia.org/resource/Centre_Back>)"
      when "goleiro"  
        "FILTER (?position = <http://dbpedia.org/resource/Goalkeeper_(association_football)>
                  || ?position = <http://dbpedia.org/resource/Goalkeeper_(football)>
                  || ?position = <http://dbpedia.org/resource/Goalkeeper>)"
      end
  end

  def team_query
    return "" unless params[:team].present?

    "FILTER (?team = #{params[:team]})"
  end

end
