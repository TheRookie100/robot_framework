import hashlib

def gerar_hash(conteudo, algoritmo):
    hash_object = hashlib.new(algoritmo)
    hash_object.update(conteudo.encode())
    return hash_object.hexdigest()

#def gerar_hash_arquivo(caminho_arquivo, algoritmo):
    #with open(caminho_arquivo, 'rb') as f:
        #conteudo = f.read()
    #return gerar_hash(conteudo, algoritmo)