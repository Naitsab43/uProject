import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {

  final ValueChanged<bool> onSelect;
  final Color? backgroudColor;
  final Color? selectedColor;
  final BorderRadius? borderRadius;
  final double height;
  final double width; 
  final bool value;


  const CustomCheckBox({
    required this.onSelect,
    required this.value,
    required this.height,
    required this.width,
    this.backgroudColor,
    this.selectedColor,
    this.borderRadius,
  });


  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();

}

class _CustomCheckBoxState extends State<CustomCheckBox> {

  late bool _selected;
  late Color _selectedColor;

  @override
  void initState() {

    super.initState();

    _selected = widget.value;

    // Si esta seleccionado se pone un color y si no esta seleccionado se le pone el color de background para que se vea como no seleccionado
    _selectedColor = _selected ? (widget.selectedColor ?? Colors.blue) : (widget.backgroudColor ?? Colors.white);

  }

  void _onTap() {

    setState(() {
      _selected = !_selected;
      _selectedColor = _selected ? (widget.selectedColor ?? Colors.blue) : (widget.backgroudColor ?? Colors.transparent);
    });

    widget.onSelect(_selected);
  }

  @override
  Widget build(BuildContext context) {

    
    return Container(

      decoration: BoxDecoration(
        color: widget.backgroudColor ?? Colors.transparent,
        borderRadius: widget.borderRadius ?? BorderRadius.circular(50),
        border: Border.all(width: 1, color: Colors.grey)
      ),
      width: widget.width,
      height: widget.height,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: GestureDetector(
          child: Container(
            decoration: BoxDecoration(
              color: _selectedColor,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          onTap: (){
            _onTap();
          },
        ),
      )
    );
  }
}