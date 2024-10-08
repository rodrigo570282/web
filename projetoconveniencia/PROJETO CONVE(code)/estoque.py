import json

def visualizar_estoque_produtos():
        
        caminho = "PROJETO CONVE/produtos.json.json"

        try:
           
            with open(caminho, "r", encoding="utf-8") as arquivo:
                lista = json.load(arquivo)
            return lista
        except:
            return []
        
def add_estoque_produtos(produto, produtos):      
    produtos.append(produto)    
    


def relatorio_venda_dia():
        
    return

def relatorio_vendas_semana():
        
    return 

def relatorio_vendas_mes():
    return 

def gerente():
    
    vendas_dia =relatorio_venda_dia()

    vendas_semana = relatorio_vendas_semana()

    vendas_mes =relatorio_vendas_mes()
    
    


    
    lista_produtos = visualizar_estoque_produtos() 
