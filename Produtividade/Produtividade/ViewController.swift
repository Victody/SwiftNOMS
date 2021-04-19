//
//  ViewController.swift
//  Produtividade
//
//  Created by Victor Ponciano on 17/04/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var navigationBar: UINavigationBar!
    
    
    //6Criar a table view e linkar ao código
    @IBOutlet weak var tabela: UITableView!
    
    
    //5Variavel que recebe um vetor de Strings
    var elementos: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func cliqueBotaoAdicionar(_ sender: Any) {
        //1Criando uma função para um botão Linkado da Storyboard que gera uma janela de alerta
        let alerta = UIAlertController(title: "Titulo", message: "Mensagem", preferredStyle: .alert)
        
        //4Personalizando a janela de alerta com cores e arredondamento de bordas
        alerta.view.tintColor = .red
        alerta.view.backgroundColor = .green
        alerta.view.layer.cornerRadius = 25
        
        //4criar e customizar o campo de texto
        alerta.addTextField { (textField) in
            textField.textColor = .magenta
            textField.keyboardAppearance = .dark
            textField.placeholder = "Escreva aqui"
            
        }
        
        
        //1Instanciando um botão para a janela de alerta
        let botaoOk = UIAlertAction(title: "Ok", style: .default){ _ in
            //2Primeiro exemplo de closure, código só executa {} se a instância do
            //btn não for dado  nil
            
            //2Primeiro código executado dentro da closure
            //print(alerta.textFields?.first?.text)
            
            //S3ó executa bloco se texto nào retornar nulo
            if let texto = alerta.textFields?.first?.text{
                self.elementos.append(texto)
            }
        }
        //fim do exemplo de closure
        
        
        //1 Criando btns da janela de alerta
        let botaoCancelar = UIAlertAction(title: "Cancelar", style: .cancel)
        
        
        //Adicionando o botão já instanciado a janela de alerta
        alerta.addAction(botaoOk)
        
        //Reafirmando mais um botão na janela de alerta
        alerta.addAction(botaoCancelar)
        
        //1apresentção que a janela de alerta irá realizar
        present(alerta, animated: true)
        
        //1adiciona um campo de texto dentro da janela de alerta??Será possível adicionar um campo de texto em qualquer elemento de UI como um botão??
        //alerta.addTextField(configurationHandler: nil)
    }
    
}

