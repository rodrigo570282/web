class Produto:
    def __init__(self, nome, quantidade):
        self.nome = nome
        self.quantidade = quantidade

    def __str__(self):
        return f"{self.nome}: {self.quantidade} unidades"


class Estoque:
    def __init__(self):
        self.produtos = []

    def adicionar_produto(self, nome, quantidade):
        self.produtos.append(Produto(nome, quantidade))
        print(f"Produto '{nome}' adicionado com {quantidade} unidades.")

    def excluir_produto(self, nome):
        for produto in self.produtos:
            if produto.nome == nome:
                self.produtos.remove(produto)
                print(f"Produto '{nome}' excluído.")
                return
        print(f"Produto '{nome}' não encontrado.")

    def ver_estoque(self):
        for produto in self.produtos:
            print(produto)
            if produto.quantidade <= 10:
                print(f"Aviso: Reabastecer estoque de '{produto.nome}'!")

    def login(self, usuario, senha):
        
        if usuario == "conveniencia" and senha == "produto":
            print("Login bem-sucedido!")
            return True
        else:
            print("Login falhou. Tente novamente.")
            return False


def main():
    estoque = Estoque()

    
    usuario = input("Usuário: ")
    senha = input("Senha: ")
    if not estoque.login(usuario, senha):
        return

    while True:
        print("\nEscolha uma opção:")
        print("1. Adicionar produto")
        print("2. Excluir produto")
        print("3. Ver estoque")
        print("4. Sair")
        opcao = input("Opção: ")

        if opcao == "1":
            nome = input("Nome do produto: ")
            quantidade = int(input("Quantidade: "))
            estoque.adicionar_produto(nome, quantidade)
        elif opcao == "2":
            nome = input("Nome do produto a excluir: ")
            estoque.excluir_produto(nome)
        elif opcao == "3":
            estoque.ver_estoque()
        elif opcao == "4":
            print("Saindo...")
            break
        else:
            print("Opção inválida. Tente novamente.")

main()
