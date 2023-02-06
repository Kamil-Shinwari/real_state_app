
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_credit_card/custom_card_type_icon.dart';
import 'package:flutter_credit_card/glassmorphism_config.dart';
import 'package:real_stat_app/screens/MainScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  String? getNumber = '';
  String? getexpiryData = '';
  String? getcardHolderName = '';
  String? getcvvCode = '';
  OutlineInputBorder? border;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(0.7),
        width: 2.0,
      ),
    );
    super.initState();
    getdata();
  }

  getdata() async{
      SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      //  sharedPreferences.setString("number", cardNumber);
      //                         sharedPreferences.setString("expired_date",expiryDate );
      //                         sharedPreferences.setString(
      //                           "CVV", cvvCode);
      //                           sharedPreferences.setString(
      //                           "Card_Holder", cardHolderName);

    getNumber = await  sharedPreferences.getString("number");
    getexpiryData = await sharedPreferences.getString("expired_date");
    getcvvCode = await sharedPreferences.getString("CVV");
    getcardHolderName = await sharedPreferences.getString("Card_Holder");
    log(await sharedPreferences.getString("number").toString());
      
  }
  @override
  Widget build(BuildContext context) {
  return  Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            // image: !useBackgroundImage
            //     ? const DecorationImage(
            //         image: ExactAssetImage('assets/bg.png'),
            //         fit: BoxFit.fill,
            //       )
            //     : null,
            color: Colors.black,
          ),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 30,
                ),
                CreditCardWidget(
                  glassmorphismConfig:
                      useGlassMorphism ? Glassmorphism.defaultConfig() : null,
                  cardNumber: cardNumber,
                  expiryDate: expiryDate,
                  cardHolderName: cardHolderName,
                  cvvCode: cvvCode,
                  bankName: 'Axis Bank',
                  showBackView: isCvvFocused,
                  obscureCardNumber: true,
                  obscureCardCvv: true,
                  isHolderNameVisible: true,
                  cardBgColor: Colors.red,
                  // backgroundImage:
                  //     useBackgroundImage ? 'assets/bg.png' : null,
                  isSwipeGestureEnabled: true,
                  onCreditCardWidgetChange:
                      (CreditCardBrand creditCardBrand) {},
                  customCardTypeIcons: <CustomCardTypeIcon>[
                    CustomCardTypeIcon(
                      cardType: CardType.mastercard,
                      cardImage: Image.asset(
                        'assets/card.png',
                        height: 48,
                        width: 48,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        CreditCardForm(
                          formKey: formKey,
                          obscureCvv: true,
                          obscureNumber: true,
                          cardNumber: getNumber !=null?getNumber!:cardNumber,
                          cvvCode: getcvvCode !=null?getcvvCode!:cvvCode,
                          isHolderNameVisible: true,
                          isCardNumberVisible: true,
                          isExpiryDateVisible: true,
                          cardHolderName: getcardHolderName !=null?getcardHolderName!:cardHolderName,
                          expiryDate: getexpiryData !=null?getexpiryData!:expiryDate,
                          themeColor: Colors.blue,
                          textColor: Colors.white,
                          cardNumberDecoration: InputDecoration(
                            labelText: 'Number',
                            hintText: 'XXXX XXXX XXXX XXXX',
                            hintStyle: const TextStyle(color: Colors.white),
                            labelStyle: const TextStyle(color: Colors.white),
                            focusedBorder: border,
                            enabledBorder: border,
                          ),
                          expiryDateDecoration: InputDecoration(
                            hintStyle: const TextStyle(color: Colors.white),
                            labelStyle: const TextStyle(color: Colors.white),
                            focusedBorder: border,
                            enabledBorder: border,
                            labelText: 'Expired Date',
                            hintText: 'XX/XX',
                          ),
                          cvvCodeDecoration: InputDecoration(
                            hintStyle: const TextStyle(color: Colors.white),
                            labelStyle: const TextStyle(color: Colors.white),
                            focusedBorder: border,
                            enabledBorder: border,
                            labelText: 'CVV',
                            hintText: 'XXX',
                          ),
                          cardHolderDecoration: InputDecoration(
                            hintStyle: const TextStyle(color: Colors.white),
                            labelStyle: const TextStyle(color: Colors.white),
                            focusedBorder: border,
                            enabledBorder: border,
                            labelText: 'Card Holder',
                          ),
                          onCreditCardModelChange:onCreditCardModelChange,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: <Widget>[
                        //     const Text(
                        //       'Glassmorphism',
                        //       style: TextStyle(
                        //         color: Colors.white,
                        //         fontSize: 18,
                        //       ),
                        //     ),
                        //     Switch(
                        //       value: useGlassMorphism,
                        //       inactiveTrackColor: Colors.grey,
                        //       activeColor: Colors.white,
                        //       activeTrackColor: Colors.green,
                        //       onChanged: (bool value) => setState(() {
                        //         useGlassMorphism = value;
                        //       }),
                        //     ),
                        //   ],
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: <Widget>[
                        //     const Text(
                        //       'Card Image',
                        //       style: TextStyle(
                        //         color: Colors.white,
                        //         fontSize: 18,
                        //       ),
                        //     ),
                        //     Switch(
                        //       value: useBackgroundImage,
                        //       inactiveTrackColor: Colors.grey,
                        //       activeColor: Colors.white,
                        //       activeTrackColor: Colors.green,
                        //       onChanged: (bool value) => setState(() {
                        //         useBackgroundImage = value;
                        //       }),
                        //     ),
                        //   ],
                        // ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            backgroundColor: const Color(0xff1b447b),
                          ),
                          child: Container(
                            margin: const EdgeInsets.all(12),
                            child: const Text(
                              'Validate',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'halter',
                                fontSize: 14,
                                package: 'flutter_credit_card',
                              ),
                            ),
                          ),
                          onPressed: ()async {
                            if (formKey.currentState!.validate()) {
                              SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                              sharedPreferences.setString("number", cardNumber);
                              sharedPreferences.setString("expired_date",expiryDate );
                              sharedPreferences.setString(
                                "CVV", cvvCode);
                                sharedPreferences.setString(
                                "Card_Holder", cardHolderName).then((value) {
                                    Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ));
                                });
                            
                            } else {
                              print('invalid!');
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

     
    
  }

    void onCreditCardModelChange(CreditCardModel? creditCardModel) {
      setState(() {
        cardNumber = getNumber !=null?getNumber!: creditCardModel!.cardNumber;
        expiryDate = getexpiryData !=null?getexpiryData!: creditCardModel!.expiryDate;
        cardHolderName =getcardHolderName !=null?getcardHolderName!: creditCardModel!.cardHolderName;
        cvvCode = getcvvCode !=null?getcvvCode!: creditCardModel!.cvvCode;
        isCvvFocused = creditCardModel!.isCvvFocused;
      });
    }
}