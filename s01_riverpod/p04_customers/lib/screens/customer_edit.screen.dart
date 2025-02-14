import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:p04_customers/providers/customer.provider.dart';
import 'package:p04_customers/widgets/circular_header.widget.dart';

class CustomerEditScreen extends ConsumerWidget {
  const CustomerEditScreen({super.key, this.id});
  final String? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(id != null ? "Edit Customer" : "Add New Customer"),
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const CircularHeaderWidget(
            child: Icon(
              Icons.person,
              size: 64,
            ),
          ),
          Expanded(child: CustomerInfoForm())
        ],
      ),
    );
  }
}

class CustomerInfoForm extends ConsumerWidget {
  CustomerInfoForm({super.key});

  static final DateFormat _dateFormat = DateFormat("yyyy-MM-dd");

  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _dob = TextEditingController();
  final _phone = TextEditingController();
  final _email = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customerForm = ref.watch(customerEditProvider);
    _name.text = customerForm.name ?? "";
    _dob.text = customerForm.dob ?? "";
    _phone.text = customerForm.phone ?? "";
    _email.text = customerForm.email ?? "";

    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                _textField(
                  "Customer Name",
                  controller: _name,
                  icon: Icons.person,
                  keyboard: TextInputType.name,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _dob,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Date of Birth",
                    prefixIcon: Icon(Icons.calendar_today),
                  ),
                  keyboardType: TextInputType.none,
                  readOnly: true,
                  validator: (value) => value != null && value.isNotEmpty
                      ? null
                      : "Enter date of birth.",
                  onTap: () async {
                    final dobValue = _dob.text.isNotEmpty
                        ? _dateFormat.parse(_dob.text)
                        : null;

                    final selected = await showDatePicker(
                        context: context,
                        initialEntryMode: DatePickerEntryMode.calendarOnly,
                        initialDate: dobValue,
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now());

                    _dob.text =
                        null != selected ? _dateFormat.format(selected) : "";
                  },
                ),
                const SizedBox(height: 16),
                _textField(
                  "Phone Number",
                  controller: _phone,
                  icon: Icons.phone,
                  keyboard: TextInputType.phone,
                ),
                const SizedBox(height: 16),
                _textField(
                  "Email Address",
                  controller: _email,
                  icon: Icons.email,
                  keyboard: TextInputType.emailAddress,
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: FilledButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.camera_alt),
                    label: const Text("Photo"),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: FilledButton.icon(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        ref.read(customerEditProvider.notifier).setInfo(
                              name: _name.text,
                              phone: _phone.text,
                              email: _email.text,
                              dob: _dob.text,
                            );
                        context.push("/customers/address");
                      }
                    },
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text("Next"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

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
