part of 'helpers.dart';

mostrarLoading( BuildContext context ) {
  showDialog(
    context: context, 
    barrierDismissible: false,
    builder: (context) => const AlertDialog(
      title: Text('Espere...'),
      content: LinearProgressIndicator(),
    ),
  );
}

mostrarAlerta(BuildContext context, String titulo, String mensaje) {

  showDialog(
    context: context, 
    barrierDismissible: true,
    builder: (context) => AlertDialog(
      title: Text(titulo),
      content: Text(mensaje),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(), 
          child: const Text('cerrar')
        )
      ],
    ),
  );

}