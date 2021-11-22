import 'dart:io';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mini_pro/src/config/api.dart';
import 'package:mini_pro/src/config/app_route.dart';
import 'package:mini_pro/src/config/condo/condo_model.dart';
import 'package:mini_pro/src/services/network.dart';


class AddCondoPage extends StatefulWidget {
  @override
  _AddCondoPageState createState() => _AddCondoPageState();
}

class _AddCondoPageState extends State<AddCondoPage> {
  File _image;
  final picker = ImagePicker;

  final _formKey = GlobalKey<FormState>();
  bool _editMode;
  condo _Con;

  @override
  void initState() {
    _editMode = false;
    _Con = condo();
    super.initState();
  }

  callback(File image){
    _image = image;
  }

  @override
  Widget build(BuildContext context) {
    Object arguments = ModalRoute.of(context).settings.arguments;
    if(arguments is condo){
      _Con = arguments;
      _editMode = true;
    }

    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(18),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Flexible(
                      child: _buildIdInput(),
                      flex: 1,
                    ),
                  ],
                ),
                SizedBox(height: 12.0),
                _buildNameInput(),
                SizedBox(height: 12.0),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: _buildPriceInput(),
                      flex: 1,
                    ),
                  ],
                ),
                SizedBox(height: 12.0),
                _buildLocationInput(),
                SizedBox(height: 12.0),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: _buildPhoneInput(),
                      flex: 1,
                    ),
                  ],
                ),
                SizedBox(height: 12.0),
                _buildLimitedroomInput(),
                SizedBox(height: 12.0),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: _buildFacilitiesInput(),
                      flex: 1,
                    ),
                  ],
                ),
                SizedBox(height: 12.0),
                _buildTypeInput(),
                SizedBox(height: 12.0),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: _buildDetailInput(),
                      flex: 1,
                    ),
                  ],
                ),
                SizedBox(height: 12.0),
                _buildImageInput(),
                ProductImage(callback, image: _Con.condoImage),
              ],
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration inputStyle({String label}) => InputDecoration(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.amberAccent,
        width: 2,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black12,
      ),
    ),
    labelText: label,
  );

  TextFormField _buildIdInput() => TextFormField(
    enabled: !_editMode,
    initialValue: _Con.condoId ?? "",
    decoration: inputStyle(label: "id"),
    keyboardType: TextInputType.number,
    onSaved: (String value) {
      _Con.condoId = value;
    },
  );

  TextFormField _buildNameInput() => TextFormField(
    initialValue: _Con.condoName ?? "",
    decoration: inputStyle(label: "name"),
    onSaved: (String value) {
      _Con.condoName = value;
    },
  );

  TextFormField _buildPriceInput() => TextFormField(
    initialValue: _Con.condoPrice ?? "",
    decoration: inputStyle(label: "price"),
    onSaved: (String value) {
      _Con.condoPrice = value;
    },
  );

  TextFormField _buildLocationInput() => TextFormField(
    initialValue: _Con.condoLocation ?? "",
    decoration: inputStyle(label: "location"),
    onSaved: (String value) {
      _Con.condoLocation = value;
    },
  );

  TextFormField _buildPhoneInput() => TextFormField(
    initialValue: _Con.condoPhone ?? "",
    decoration: inputStyle(label: "phone"),
    onSaved: (String value) {
      _Con.condoPhone = value;
    },
  );

  TextFormField _buildLimitedroomInput() => TextFormField(
    initialValue: _Con.condoLimitedroom ?? "",
    decoration: inputStyle(label: "limitedroom"),
    onSaved: (String value) {
      _Con.condoLimitedroom = value;
    },
  );

  TextFormField _buildFacilitiesInput() => TextFormField(
    initialValue: _Con.condoFacilities ?? "",
    decoration: inputStyle(label: "facilities"),
    onSaved: (String value) {
      _Con.condoFacilities = value;
    },
  );

  TextFormField _buildTypeInput() => TextFormField(
    initialValue: _Con.condoType ?? "",
    decoration: inputStyle(label: "type"),
    onSaved: (String value) {
      _Con.condoType = value;
    },
  );

  TextFormField _buildDetailInput() => TextFormField(
    initialValue: _Con.condoDetail ?? "",
    decoration: inputStyle(label: "detail"),
    onSaved: (String value) {
      _Con.condoDetail = value;
    },
  );

  TextFormField _buildImageInput() => TextFormField(
    initialValue: _Con.condoImage ?? "",
    decoration: inputStyle(label: "image"),
    onSaved: (String value) {
      _Con.condoImage = value;
    },
  );

  AppBar _buildAppBar() => AppBar(
    centerTitle: false,
    title: Text(_editMode ? 'Edit condo' : 'Add Condo'),
    actions: [
      TextButton(
        onPressed: () async {
          _formKey.currentState.save();
          FocusScope.of(context).requestFocus(FocusNode());
          if (_editMode) {//edit game
            try{
              final message = await NetworkService().editConDio(_image, _Con);
              if (message == 'Edit Successfully') {
                Navigator.pushNamedAndRemoveUntil(context, AppRoute.condoRoute, (route) => false);
              }else{
                Flushbar(
                  title:  "Edit",
                  titleColor: Colors.red,
                  backgroundGradient: LinearGradient(colors: [Colors.blueGrey, Colors.greenAccent]),
                  icon: Icon(
                    Icons.cancel_presentation, size: 35,
                    color: Colors.amber,
                  ),
                  message:  "Edit Successfully",
                  duration:  Duration(seconds: 5),
                )..show(context);

              }
            }catch(ex){
              Flushbar(
                title:  "Edit Fild",
                titleColor: Colors.red,
                backgroundGradient: LinearGradient(colors: [Colors.blueGrey, Colors.greenAccent]),
                icon: Icon(
                  Icons.cancel_presentation, size: 35,
                  color: Colors.amber,
                ),
                message:  "Edit Successfully",
                duration:  Duration(seconds: 5),
              )..show(context);

            }
          }else{//add game
            try {
              Navigator.pop(context);
              final message = await NetworkService().addConDio(_image, _Con);
              if (message == 'Add Successfully') {
                Navigator.pushNamedAndRemoveUntil(context, AppRoute.condoRoute, (route) => false);
              } else {
                Flushbar(
                  title:  "Add Fild",
                  titleColor: Colors.red,
                  backgroundGradient: LinearGradient(colors: [Colors.blueGrey, Colors.greenAccent]),
                  icon: Icon(
                    Icons.cancel_presentation, size: 35,
                    color: Colors.amber,
                  ),
                  message:  "add Successfully",
                  duration:  Duration(seconds: 5),
                )..show(context);
              }
            }catch(ex){
              Flushbar(
                title:  "Add Fild",
                titleColor: Colors.red,
                backgroundGradient: LinearGradient(colors: [Colors.blueGrey, Colors.greenAccent]),
                icon: Icon(
                  Icons.cancel_presentation, size: 35,
                  color: Colors.amber,
                ),
                message:  "add Successfully",
                duration:  Duration(seconds: 5),
              )..show(context);
            }
          }
        },
        child: Text('submit',style: TextStyle(color: Colors.white70),),
      )
    ],
  );
} //end class
class ProductImage extends StatefulWidget {
  final Function callBack;
  final String image;

  const ProductImage(this.callBack, {Key key, @required this.image})
      : super(key: key);

  @override
  _ProductImageState createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  File _imageFile;
  String _image;
  final _picker = ImagePicker();

  @override
  void initState() {
    _image = widget.image;
    super.initState();
  }

  @override
  void dispose() {
    _imageFile?.delete();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildPickerImage(),
          _buildPreviewImage(),
        ],
      ),
    );
  }

  dynamic _buildPreviewImage() {
    if ((_image == null || _image.isEmpty) && _imageFile == null) {
      return SizedBox();
    }

    final container = (Widget child) => Container(
      color: Colors.grey[100],
      margin: EdgeInsets.only(top: 4),
      alignment: Alignment.center,
      height: 350,
      child: child,
    );

    return _image != null
        ? container(Image.network('${API.CONDO_IMAGE}/$_image'))
        : Stack(
      children: [
        container(Image.file(_imageFile)),
        _buildDeleteImageButton(),
      ],
    );
  }

  OutlinedButton _buildPickerImage() => OutlinedButton.icon(
    icon: Icon(Icons.image),
    label: Text('image'),
    onPressed: () {
      _modalPickerImage();
    },
  );

  void _modalPickerImage() {
    final buildListTile =
        (IconData icon, String title, ImageSource source) => ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.of(context).pop();
        _pickImage(source);
      },
    );

    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              buildListTile(
                Icons.photo_camera,
                "Take a picture from camera",
                ImageSource.camera,
              ),
              buildListTile(
                Icons.photo_library,
                "Choose from photo library",
                ImageSource.gallery,
              ),
            ],
          ),
        );
      },
    );
  }

  void _pickImage(ImageSource source) {
    _picker
        .getImage(
      source: source,
      imageQuality: 70,
      maxHeight: 500,
      maxWidth: 500,
    )
        .then((file) {
      if (file != null) {
        setState(() {
          _imageFile = File(file.path);
          _image = null;
          widget.callBack(_imageFile);
        });
      }
    }).catchError((error) {
      //todo
    });
  }


  Positioned _buildDeleteImageButton() => Positioned(
    right: 0,
    child: IconButton(
      onPressed: () {
        setState(() {
          _imageFile = null;
          widget.callBack(null);
        });
      },
      icon: Icon(
        Icons.clear,
        color: Colors.black54,
      ),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    ),
  );
}
