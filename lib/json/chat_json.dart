import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

const List profile = [
  {
    "name": "Billy Mejia    25-1130-2019",
    "img":
        "https://images.pexels.com/photos/1851243/pexels-photo-1851243.jpeg?auto=compress&cs=tinysrgb&w=400"
  },
  {
    "name": "Jeremias Escobar 25-3712-2019",
    "img":
        "https://images.pexels.com/photos/1851243/pexels-photo-1851243.jpeg?auto=compress&cs=tinysrgb&w=400"
  }
];

List config_secc_uno = [
  {"icon": Icons.star, "text": "Mensajes", "color": Colors.yellow[700]},
  {
    "icon": Icons.laptop,
    "text": "Whatsapp web/Desktop",
    "color": Colors.green[800]
  }
];
List config_secc_dos = [
  {
    {"icon": Icons.lock, "text": "Cuenta", "color": Colors.blue[700]},
    {"icon": Icons.chat_bubble, "text": "Chats", "color": Colors.green},
    {
      "icon": Icons.notification_important,
      "text": "Notificaciones",
      "color": Colors.redAccent
    },
    {
      "icon": LineIcons.database,
      "text": "Almacenar and respaldos",
      "color": Colors.green
    }
  }
];
List config_secc_tres = [
  {"icon": Icons.info_outline, "text": "Help", "color": Colors.blue[600]},
  {
    "icon": Icons.favorite_rounded,
    "text": "Llamar a un amigo",
    "color": Colors.red[400]
  }
];

const List mensajes = [
  {
    "isMe": true,
    "message": "Que estas haciendo",
    "time": "18:42",
    "isLast": false
  },
  {
    "isMe": false,
    "message": "Que estas haciendo",
    "time": "18:42",
    "isLast": true
  }
];
