import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:p04_customers/widgets/circular_header.widget.dart';

class CustomerAddressScreen extends StatelessWidget {
  const CustomerAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Address"),
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const CircularHeaderWidget(child: Icon(Icons.pin_drop, size: 64)),
          Expanded(child: AddressForm()),
        ],
      ),
    );
  }
}

class AddressForm extends ConsumerWidget {
  AddressForm({super.key});

  final _formKey = GlobalKey<FormState>();
  final _division = TextEditingController();
  final _district = TextEditingController();
  final _township = TextEditingController();
  final _street = TextEditingController();
  final _building = TextEditingController();
  final _quarter = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                _selectOne(
                  "Division",
                  controller: _division,
                  icon: Icons.map,
                  onTap: () {},
                ),
                const SizedBox(height: 16),
                _selectOne(
                  "District",
                  controller: _district,
                  icon: Icons.map,
                  onTap: () {},
                ),
                const SizedBox(height: 16),
                _selectOne(
                  "Township",
                  controller: _township,
                  icon: Icons.map,
                  onTap: () {},
                ),
                const SizedBox(height: 16),
                _textField(
                  "Quarter",
                  controller: _quarter,
                  icon: Icons.my_location,
                  keyboard: TextInputType.name,
                ),
                const SizedBox(height: 16),
                _textField(
                  "Street",
                  controller: _street,
                  icon: Icons.signpost,
                  keyboard: TextInputType.name,
                ),
                const SizedBox(height: 16),
                _textField(
                  "Building",
                  controller: _building,
                  icon: Icons.apartment,
                  keyboard: TextInputType.name,
                ),
              ],
            )
          ],
        ),
      ),
    )
  }

  Widget _selectOne(
    String? labelText, {
    required TextEditingController controller,
    required IconData icon,
    required GestureTapCallback onTap,
  }) =>
      TextFormField(
        onTap: onTap,
        controller: controller,
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: labelText,
            prefixIcon: Icon(icon),
            suffixIcon: const Icon(Icons.arrow_drop_down)),
        keyboardType: TextInputType.none,
        readOnly: true,
        validator: (value) =>
            value != null && value.isNotEmpty ? null : "Enter $labelText",
      );

  Widget _textField(
    String? labelText, {
    required TextEditingController controller,
    required IconData icon,
    required TextInputType keyboard,
  }) =>
      TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: labelText,
          prefixIcon: Icon(icon),
        ),
        keyboardType: keyboard,
        validator: (value) =>
            value != null && value.isNotEmpty ? null : "Enter $labelText",
      );
}
