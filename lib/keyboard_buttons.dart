import 'constants.dart';
import 'package:flutter/material.dart';

typedef CallbackButtonTap = void Function({String buttonText});

class KeyboardButtons extends StatelessWidget {
  const KeyboardButtons(
      {super.key, required this.buttons, required this.onTap});

  final String buttons;
  final CallbackButtonTap onTap;

  bool _colorTextButtons() {
    return (buttons == DEL_SIGN ||
        buttons == DECIMAL_POINT_SIGN ||
        buttons == CLEAR_ALL_SIGN ||
        buttons == MODULAR_SIGN ||
        buttons == PLUS_SIGN ||
        buttons == MINUS_SIGN ||
        buttons == MULTIPLICATION_SIGN ||
        buttons == DIVISION_SIGN ||
        buttons == EXCHANGE_CALCULATOR ||
        buttons == PI ||
        buttons == SQUARE_ROOT_SIGN ||
        buttons == POWER_SIGN ||
        buttons == LN_SIGN ||
        buttons == LG_SIGN ||
        buttons == SIN_SIGN ||
        buttons == COS_SIGN ||
        buttons == TAN_SIGN ||
        buttons == RAD_SIGN ||
        buttons == DEG_SIGN ||
        buttons == ARCSIN_SIGN ||
        buttons == ARCCOS_SIGN ||
        buttons == ARCTAN_SIGN ||
        buttons == LN2_SIGN ||
        buttons == E_NUM ||
        buttons == LEFT_QUOTE_SIGN ||
        buttons == RIGHT_QUOTE_SIGN);
  }

  bool _fontSize() {
    return (buttons == LN_SIGN ||
        buttons == LG_SIGN ||
        buttons == SIN_SIGN ||
        buttons == COS_SIGN ||
        buttons == TAN_SIGN ||
        buttons == RAD_SIGN ||
        buttons == DEG_SIGN ||
        buttons == ARCSIN_SIGN ||
        buttons == ARCCOS_SIGN ||
        buttons == ARCTAN_SIGN ||
        buttons == LN2_SIGN ||
        buttons == LEFT_QUOTE_SIGN ||
        buttons == RIGHT_QUOTE_SIGN);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        child: OutlinedButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all((buttons == EQUAL_SIGN)
                ? Theme.of(context).primaryColor
                : const Color(0xFFFFFFFF)),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(vertical: 10.0)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                side: const BorderSide(
                    color: Colors.blue, style: BorderStyle.solid, width: 1),
              ),
            ),
          ),
          child: Text(
            buttons,
            style: TextStyle(
                color: (_colorTextButtons())
                    ? Colors.blueAccent
                    : (buttons == EQUAL_SIGN)
                        ? Theme.of(context).primaryColor
                        : const Color(0xFF444444),
                fontSize: _fontSize() ? 18 : 20.0),
          ),
          onPressed: () => onTap(buttonText: buttons),
        ),
      ),
    );
  }
}
