import 'package:flutter/material.dart';

class CartItem {
  final String name;
  final double price;

  CartItem({required this.name, required this.price});
}

class CartModel {

  final ValueNotifier<List<CartItem>> items = ValueNotifier<List<CartItem>>([]);

  void addItem(CartItem item) {
    items.value = [...items.value, item];
  }

  void removeItem(CartItem item) {
    items.value = List.from(items.value)..remove(item);
  }
}

class ListenableTwo extends StatefulWidget {
  const ListenableTwo({super.key});

  @override
  State<ListenableTwo> createState() => _ListenableTwoState();
}

class _ListenableTwoState extends State<ListenableTwo> {

  final CartModel cartModel = CartModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Value Listenable Builder'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: ValueListenableBuilder<List<CartItem>>(
          valueListenable: cartModel.items,
          builder: (context, items, child) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text('\$${item.price.toStringAsFixed(2)}'),
                  trailing: IconButton(
                    onPressed: () {
                      cartModel.removeItem(item);
                    },
                    icon: const Icon(Icons.remove_circle, color: Colors.red),
                  ),
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cartModel.addItem(
            CartItem(
              name: 'Item ${cartModel.items.value.length + 1}',
              price: (10 + cartModel.items.value.length * 5).toDouble(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
