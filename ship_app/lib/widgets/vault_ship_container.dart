import 'package:flutter/material.dart';

import '../models/vault.dart';
import 'vault_info.dart';

class VaultShipContainer extends StatelessWidget {
  const VaultShipContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Image.asset(
          "assets/popa.png",
          height: 350,
          color: Colors.black54,
        ),
        Expanded(
          child: Container(
            height: 251,
            color: Colors.black54,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: getVaults().length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final vault = getVaults()[index];
                return Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                    left: 10,
                    right: 10,
                  ),
                  child: VaultInfo(
                    vault: vault,
                  ),
                );
              },
            ),
          ),
        ),
        Image.asset(
          "assets/proa.png",
          height: 350,
          color: Colors.black54,
        ),
      ],
    );
  }
}
