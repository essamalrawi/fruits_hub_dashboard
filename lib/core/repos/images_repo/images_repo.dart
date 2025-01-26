import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../errors/faluires.dart';

abstract class ImagesRepo {
  Future<Either<Faluires, String>> uploadImage(File image);
}
