class Dados{
  String cpf;
  String senha;

  Dados({this.cpf, this.senha});

  Dados.fromJson(Map<String, dynamic> json){
    cpf = json['cpf'];
    senha = json['senha'];

  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cpf'] = this.cpf;
    data['senha'] = this.senha;
    return data;
  }
}
