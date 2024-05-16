from collections import defaultdict



def combine_arrays(array1, array2):
    # Creare un dizionario per memorizzare gli ID e i conteggi
    id_count_map = defaultdict(int)

    # Aggiungere conteggi dall'array1 al dizionario
    for obj in array1:
        id_count_map[obj['id']] += obj['count']

    # Aggiungere conteggi dall'array2 al dizionario, sommando i valori esistenti
    for obj in array2:
        id_count_map[obj['id']] += obj['count']

    # Creare un nuovo array di oggetti risultante
    combined_array = [{'id': id, 'count': count} for id, count in id_count_map.items()]
    combined_array = sorted(combined_array, key=lambda x: x['count'], reverse=True)

    return combined_array

def create_multiplier(array, n):
    dim = len(array)
    new_array = []

    for i, item in enumerate(array):
        multiplier = n - i * (n / dim)
        new_array.append({'id': item['id'], 'multiplier': multiplier})

    return new_array

def update_multiplier(array1, array2,paramName):
    for article in array1:
        for genres in array2:
            if(article[paramName]==genres['id']):article['multiplier']+=genres['multiplier']



def sort_categories(articles, commentsPerGenre, likesPerGenre,weight, paramToFilter):

    combined_array = combine_arrays(commentsPerGenre, likesPerGenre)
    multipliers=create_multiplier(combined_array,weight)
    update_multiplier(articles,multipliers, paramToFilter)
    
    return articles