from flask import Flask, request, jsonify
import json
from sort_image import sort_image
from sort_categories import sort_categories
#from sklearn import linear_model

app= Flask(__name__)

@app.route('/sort_articles', methods=["POST"])
def sort_articles():
    personalized=True
    data=request.get_json()
    
    personal_interactions_weight=2 #peso dei like e commenti dell'utente
    public_interactions_weight=2 #peso dei like e commenti della community

    if data is None:
        return jsonify(error="Invalid JSON"), 400
    
    articles=data['articles']
    try:
        commentsPerGenre= data['commentsPerGenre']
        likePerGenre= data['likePerGenre']
        likedArticles= data['likedArticles']
        commentedArticles= data['commentedArticles']
    except Exception: personalized=False
    
    config=request.args.get('config')
    config = json.loads(config)
    pattern=config['pattern']
    pattern.sort()
    dim=config['dim']


#logics:

    #inizializziamo l'indice a 1 per ogni articolo dopodiche lavoriamo con dei modificatori per alzare 
    # l'indice degli articoli consigliati
    
    #ogni articolo appartenente alle categorie preferite dall'utente in base a quante iterazioni ha fatto con 
# articoli di quella categoria partendo da un +2 dimezzando per ogni posizione che si scende

#stesso procedimento per gli articoli con più interazioni dalla community che partono da +4 e sono divisi 
# e decrementano per ogni posizione di 4/n dove n è la dimensione dell'array
    
    if(personalized):
        #si inizializza il peso dell'articolo a 1
        for item in articles:
            item['multiplier'] = 1
        #si aggiorna il peso in base alla categoria preferita dell'utente
        #il parametro paramToFilter sta a indicare quali articoli devono prendere il moltiplicatore in questo caso tutti quegli articoli coi genreId più popolari
        articles=sort_categories(articles,commentsPerGenre,likePerGenre,personal_interactions_weight,paramToFilter='genreId')
        
        for item in articles:
            print (item['title'],item['genre'],item['multiplier'],'\n   ')
        
        #si aggiorna il peso in base agli articoli più cliccati dalla community
        articles=sort_categories(articles,commentedArticles,likedArticles,public_interactions_weight,paramToFilter='id')
        
        #ordina gli articoli in base al peso ricavato
        articles = sorted(articles, key=lambda x: x['multiplier'], reverse=True)

    result=sort_image(articles,dim,pattern)

    return result,201

if __name__=='__main__':
    app.run(debug=True)