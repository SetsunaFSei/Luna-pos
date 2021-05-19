import 'package:flutter/material.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppIcon.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/widget/CelestialAppbar.dart';
import 'package:lunapos/presentation/widget/CelestialButton.dart';
import 'package:lunapos/presentation/widget/CelestialText.dart';

class AddCustomerPage extends StatelessWidget {
  // rwar
  @override
  Widget build(BuildContext context) {
    CelestialText celestialText = new CelestialText();
    TextEditingController emailText = TextEditingController(text: '');
    CelestialAppBar celestialAppBar = new CelestialAppBar();

    return Scaffold(
      appBar: celestialAppBar.appBarCustomer(
          AppIcon.search,
          AppString.companyTitle,
          AppIcon.search,
          AppColor.primaryColor,
          null,
          null),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: celestialText.celestialTextField(
                      'Nama Depan', emailText)),
              Expanded(
                  child: celestialText.celestialTextField(
                      'Nama Belakang', emailText)),
            ],
          ),
          celestialText.celestialTextField('Nama Tampilan', emailText),
          celestialText.celestialTextField('Jenis Kelamin', emailText),
          celestialText.celestialTextField('Email', emailText),
          celestialText.celestialTextField('No Handphone', emailText),
          celestialText.celestialTextField('Perusahaan', emailText),
          celestialText.celestialTextField('Jalan', emailText),
          celestialText.celestialTextField('Kota', emailText),
          celestialText.celestialTextField('Provinsi', emailText),
          celestialText.celestialTextField('Negara', emailText),
          celestialText.celestialTextField('Kode Pos', emailText),
          Expanded(
            child: Row(
              children: [
                Expanded(child: PrimaryButton(text: 'Batal', onPressed: () {})),
                Expanded(
                    child: PrimaryButton(text: 'Simpan', onPressed: () {})),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
