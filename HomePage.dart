import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Pesquisar',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        backgroundColor: Color(0xFF10397B),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.purple,
              ),
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children:  [
                          Text(
                            'Top destinos mais procurados',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: Colors.white
                            ),
                          ),
                          Text(
                            'Corre que tá rolando muita promoção',
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.white
                            ),
                          ),
                          SizedBox(height: 16),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFFF8FF04),
                            ),
                            onPressed: () {},
                            child: Text(
                              'EU QUERO!',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 14),
                    Placeholder(
                      fallbackHeight: 150,
                      fallbackWidth: 100,
                      color: Colors.white,
                    ),

                  ],
                )
            ),
            const SizedBox(height: 16),
            
            buildCardPacoteTuristico(
                imagem: 'https://viagemeturismo.abril.com.br/wp-content/uploads/2016/12/cancun11.jpg?quality=70&strip=info&w=462?quality=70&strip=info&w=636',
                titulo: 'Pacote Cancún 2021',
                transporte: 'Aéreo - Hotel All Inclusive',
                quantDiaria: 5,
                quantPessoas: 1,
                precoAntigo: 6816,
                precoAtual: 3749,
                numParcelas: 12
            ),
          ],
        ),
      ),
    );
  }
  
  buildCardPacoteTuristico({
    required String imagem,
    required String titulo,
    required String transporte,
    required int quantDiaria,
    required int quantPessoas,
    required double precoAntigo,
    required double precoAtual,
    required int numParcelas,
  }){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
            child: Image.network(imagem),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  transporte,
                  style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.wb_sunny_outlined,
                      color: Colors.grey[700],
                    ),
                    Text(
                      '$quantDiaria Diárias',
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(width: 4),
                    Icon(
                      Icons.person_outline,
                      color: Colors.grey[700],
                    ),
                    Text(
                      '$quantPessoas pessoa',
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text('A partir de'),
                    SizedBox(width: 2),
                    Text(
                      'R\$ $precoAntigo',
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children:  [
                    Text(
                      'R\$$precoAtual',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFD6C00),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Text('Taxa grátis em até ${numParcelas}x',
                    style: TextStyle(color: Colors.grey[700]),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'Cancelamento Grátis!',
                  style: TextStyle(
                  color: Colors.green[700]
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

