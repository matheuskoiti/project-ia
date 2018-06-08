module HomeHelper
  def country_options
    [
      ['Brasil', '<http://dbpedia.org/resource/Brazil>'],
      ['Argentina', '<http://dbpedia.org/resource/Argentina>'],
      ['Uruguai', '<http://dbpedia.org/resource/Uruguay>'],
      ['Chile', '<http://dbpedia.org/resource/Chile>'],
      ['Equador', '<http://dbpedia.org/resource/Ecuador>'],
      ['Colômbia', '<http://dbpedia.org/resource/Colombia>'],

      ['Estados Unidos', '<http://dbpedia.org/resource/United_States>'],
      ['México', '<http://dbpedia.org/resource/Mexico>'],

      ['Espanha', '<http://dbpedia.org/resource/Spain>'],
      ['Portugal', '<http://dbpedia.org/resource/Portugal>'],
      ['Inglaterra', '<http://dbpedia.org/resource/England>'],
      ['França', '<http://dbpedia.org/resource/France>'],
      ['Holanda', '<http://dbpedia.org/resource/Netherlands>'],
      ['Itália', '<http://dbpedia.org/resource/Italy>'],
      ['Alemanha', '<http://dbpedia.org/resource/Germany>'],
      ['Bélgica', '<http://dbpedia.org/resource/Belgium>'],
      ['Croácia', '<http://dbpedia.org/resource/Croatia>'],
      ['Rússia', '<http://dbpedia.org/resource/Russia>'],
      ['Suécia', '<http://dbpedia.org/resource/Sweden>'],
      ['Dinamarca', '<http://dbpedia.org/resource/Denmark>'],

      ['Camarões', '<http://dbpedia.org/resource/Cameroon>'],
      ['Costa do Marfin', '<http://dbpedia.org/resource/Ivory_Coast>'],
      ['Nigéria', '<http://dbpedia.org/resource/Nigeria>'],

      ['Japão', '<http://dbpedia.org/resource/Japan>'],
      ['Coréia do Sul', '<http://dbpedia.org/resource/South_Korea>']
    ]
  end

  def position_options      
    [
      ['Atacante', 'atacante'],
      ['Meio-campista', 'meio'],
      ['Defensor', 'defensor'],
      ['Goleiro', 'goleiro']
    ]
  end

  def team_options
    [
      ['Barcelona', '<http://dbpedia.org/resource/FC_Barcelona>'],
      ['Real Madrid', '<http://dbpedia.org/resource/Real_Madrid_C.F.>'],
      ['Atlético de Madrid', '<http://dbpedia.org/resource/Atlético_Madrid>'],

      ['Chelsea', '<http://dbpedia.org/resource/Chelsea_F.C.>'],
      ['Manchester United', '<http://dbpedia.org/resource/Manchester_United_F.C.>'],
      ['Manchester City', '<http://dbpedia.org/resource/Manchester_City_F.C.>'],
      ['Arsenal', '<http://dbpedia.org/resource/Arsenal_F.C.>'],
      ['Tottenham', '<http://dbpedia.org/resource/Tottenham_Hotspur_F.C.>'],
      ['Liverpool', '<http://dbpedia.org/resource/Liverpool_F.C.>'],

      ['Bayern de Munique', '<http://dbpedia.org/resource/FC_Bayern_Munich>'],
      ['Borussia Dortmund', '<http://dbpedia.org/resource/Borussia_Dortmund>'],

      ['Milan', '<http://dbpedia.org/resource/A.C._Milan>'],
      ['Inter de Milão', '<http://dbpedia.org/resource/Inter_Milan>'],
      ['Juventus', '<http://dbpedia.org/resource/Juventus_F.C.>'],

      ['Porto', '<http://dbpedia.org/resource/FC_Porto>'],
      ['Benfica', '<http://dbpedia.org/resource/S.L._Benfica>'],
      ['Sporting', '<http://dbpedia.org/resource/Sporting_Clube_de_Portugal>'],

      ['PSV', '<http://dbpedia.org/resource/PSV_Eindhoven>'],
      ['Ajax', '<http://dbpedia.org/resource/AFC_Ajax>'],

      ['PSG', '<http://dbpedia.org/resource/Paris_Saint-Germain_F.C.>'],
      ['Lyon', '<http://dbpedia.org/resource/Olympique_Lyonnais>'],
      ['Olympique de Marseille', '<http://dbpedia.org/resource/Olympique_de_Marseille>'],

      ['Santos', '<http://dbpedia.org/resource/Santos_FC>'],
      ['São Paulo', '<http://dbpedia.org/resource/São_Paulo_FC>'],
      ['Corinthians', '<http://dbpedia.org/resource/Sport_Club_Corinthians_Paulista>'],
      ['Palmeiras', '<http://dbpedia.org/resource/Sociedade_Esportiva_Palmeiras>']
    ]
  end
end
