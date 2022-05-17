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
                color: Colors.purple,
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
            SizedBox(height: 16),
            Card(
              child: Column(
                children: [
                  Placeholder(fallbackHeight: 150),
                  Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pacote Cancún  2021',
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text('Aéreo + Hotel All Inclusive'),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(
                                Icons.wb_sunny_outlined,
                                color: Colors.grey[700],
                              ),
                              Text(
                                '5 Diárias',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.person_outline,
                                color: Colors.grey[700],
                              ),
                              Text(
                                '1 pessoa',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Text('A partir de'),
                              SizedBox(width: 2),
                              Text(
                                'R\$6.816',
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                'R\$3.749',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFD6C00),
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Text('Taxa grátis em até 12x'),
                            ],
                          ),
                          SizedBox(height: 8),
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
            )
          ],
        ),
      ),
    );
  }
}
