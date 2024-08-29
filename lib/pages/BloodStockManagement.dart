import 'package:flutter/material.dart';

class BloodStockManagement extends StatefulWidget {
  static const String routeName = '/bloodStockManagement';

  @override
  _BloodStockManagementState createState() => _BloodStockManagementState();
}

class _BloodStockManagementState extends State<BloodStockManagement> {
  final _bloodStockManagement = BloodStockManagement();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestion des stocks de sang',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: 'Blood ',
                  style: TextStyle(color: Colors.red),
                ),
                TextSpan(
                  text: 'Bank ',
                  style: TextStyle(color: Colors.blue),
                ),
                TextSpan(
                  text: 'System',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'WELCOME!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.place,
                      size: 30,
                      color: Colors.grey, // Couleur spécifiée pour l'icône
                    ),
                    SizedBox(width: 5), // Espacement entre l'icône et le texte
                    Text(
                      'Saint-Helene Melen',
                      style: TextStyle(fontSize: 20, color: Colors.black), // Style appliqué au Text
                    ),
                  ],
                ),
                const SizedBox(height: 10), // Ajout d'un SizedBox pour l'espace
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center, // Alignement horizontal des enfants (au centre)
                  mainAxisSize: MainAxisSize.min, // Taille de la colonne (minimale)
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Image.asset(
                        'assets/images/profile.jpeg',
                        height: 50, 
                        width: 50,
                      ),
                    ),
                    SizedBox(width: 10), // Espacement entre l'icône et le texte
                    Column(
                      children: [
                        Text(
                          'Dr FAROUK',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          'faroukzainab50@gmail.com',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Consulter les stocks de sang',
                      style: TextStyle(
                        color: Colors.red, // Text color
                      fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 218, 228, 236),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'STOCK',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '3',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 50),
                    Text(
                      'groupe O-',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                DataTable(
                  dividerThickness: 1.0,
                  columns: [
                    DataColumn(label: Text('id')),
                    DataColumn(label: Text('date de prélèvement')),
                    DataColumn(label: Text('date de non Validité')),
                  ],
                  rows: bloodStocks.map((bloodStock) {
                    final index = bloodStocks.indexOf(bloodStock);
                    final isOdd = index.isOdd;
                    final backgroundColor = isOdd ? Colors.grey[300] : Colors.white;

                    return DataRow(
                      color: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.selected)) {
                          return Theme.of(context).colorScheme.primary.withOpacity(0.08);
                        }
                        return backgroundColor;
                      }),
                      cells: [
                        DataCell(Text(bloodStock.id.toString())),
                        DataCell(Text(bloodStock.dateOfCollection)),
                        DataCell(Text(bloodStock.dateOfInvalidity)),
                      ],
                    );
                  }).toList(),
                ),
                SizedBox(height: 20), // Add some space between the data table and the button
                BloodCommandButton(
                  onPressed: () {
                    // Handle button press
                    print('Commander du sang');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BloodStockItem {
  final int id;
  final String dateOfCollection;
  final String dateOfInvalidity;

  BloodStockItem({
    required this.id,
    required this.dateOfCollection,
    required this.dateOfInvalidity,
  });
}

class BloodCommandButton extends StatelessWidget {
  final VoidCallback onPressed;

  BloodCommandButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Colors.red,
      ),
      child: Text(
        'Commander du sang',
        style: TextStyle(
          color: Colors.white, // Text color
        ),
      ),
    );
  }
}

final List<BloodStockItem> bloodStocks = [
  BloodStockItem(
      id: 1,
      dateOfCollection: '10/09/2023',
      dateOfInvalidity: '10/09/2024'),
  BloodStockItem(
      id: 2,
      dateOfCollection: '10/09/2023',
      dateOfInvalidity: '10/09/2024'),
  BloodStockItem(
      id: 3,
      dateOfCollection: '10/09/2023',
      dateOfInvalidity: '10/09/2024'),
  BloodStockItem(
      id: 4,
      dateOfCollection: '10/09/2023',
      dateOfInvalidity: '10/09/2024'),
  BloodStockItem(
      id: 5,
      dateOfCollection: '10/09/2023',
      dateOfInvalidity: '10/09/2024'),
];
