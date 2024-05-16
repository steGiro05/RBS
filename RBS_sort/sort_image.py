def separate_by_image(array,n_images):
    with_image = []
    without_image = []
    
    stop=False
    count_images=0
    for element in array:
        if 'imgUrl' in element and element['imgUrl'] is not None and not stop:
            with_image.append(element)
            count_images+=1
            if(n_images == count_images):stop=True
        else:
            without_image.append(element)
    
    
    return with_image, without_image

def increment_array(array, increment):
    """
    Incrementa tutti i numeri nell'array di un numero specificato.

    Args:
        array (list): L'array da incrementare.
        increment (int): Il valore da aggiungere a ciascun numero nell'array.

    Returns:
        list: L'array con tutti i numeri incrementati.
    """
    return [n + increment for n in array]


def sort_image(data,dim,pattern):

    remainder=len(data)%dim
    quotient=len(data)/dim
    quotient=int(quotient)
    n_images=quotient*len(pattern)
    # Itera sull'array partendo dall'indice di partenza fino alla fine
    for index in range(dim*quotient, len(data)):
        if(int(index%dim) in pattern):
            n_images += 1
            
    #n_images indica in base agli articoli della pagina quante immagini vanno mostrate nell'homepage

    with_img,without_img=separate_by_image(data,n_images)
    
    pattern_index=0
    
    for item in with_img:
        without_img.insert(pattern[pattern_index],item)
        if(pattern_index==len(pattern)-1):
            pattern_index=0
            
            pattern=increment_array(pattern,dim)

            
        else:pattern_index+=1


    return without_img