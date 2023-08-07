import 'package:flutter/material.dart';

import '../models/vault.dart';

class VaultInfo extends StatelessWidget {
  final Vault vault;
  const VaultInfo({super.key, required this.vault});

  @override
  Widget build(BuildContext context) {
    var percent = ((vault.quantity * 100) / vault.total);
    return Container(
      width: 200,
      color: const Color.fromARGB(255, 87, 108, 227),
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              vault.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              "(${percent.toStringAsFixed(2)}%)",
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              "E: ${vault.quantity.toStringAsFixed(2)}",
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
