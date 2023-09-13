// Autogenerated by jnigen. DO NOT EDIT!

// ignore_for_file: annotate_overrides
// ignore_for_file: camel_case_extensions
// ignore_for_file: camel_case_types
// ignore_for_file: constant_identifier_names
// ignore_for_file: file_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: overridden_fields
// ignore_for_file: unnecessary_cast
// ignore_for_file: unused_element
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: unused_local_variable
// ignore_for_file: unused_shown_name

import "dart:isolate" show ReceivePort;
import "dart:ffi" as ffi;
import "package:jni/internal_helpers_for_jnigen.dart";
import "package:jni/jni.dart" as jni;

// Auto-generated initialization code.

final ffi.Pointer<T> Function<T extends ffi.NativeType>(String sym) jniLookup =
    ProtectedJniExtensions.initGeneratedLibrary("kotlin_plugin_bindings");

/// from: Example
class Example extends jni.JObject {
  @override
  late final jni.JObjType<Example> $type = type;

  Example.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  /// The type which includes information such as the signature of this class.
  static const type = $ExampleType();
  static final _new0 =
      jniLookup<ffi.NativeFunction<jni.JniResult Function()>>("Example__new0")
          .asFunction<jni.JniResult Function()>();

  /// from: public void <init>()
  /// The returned object must be released after use, by calling the [release] method.
  factory Example() {
    return Example.fromRef(_new0().object);
  }

  static final _thinkBeforeAnswering = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("Example__thinkBeforeAnswering")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public final java.lang.Object thinkBeforeAnswering(kotlin.coroutines.Continuation continuation)
  /// The returned object must be released after use, by calling the [release] method.
  Future<jni.JString> thinkBeforeAnswering() async {
    final $p = ReceivePort();
    final $c =
        jni.JObject.fromRef(ProtectedJniExtensions.newPortContinuation($p));
    _thinkBeforeAnswering(reference, $c.reference).object;
    final $o = jni.JObjectPtr.fromAddress(await $p.first);
    final $k = const jni.JStringType().getClass().reference;
    if (!jni.Jni.env.IsInstanceOf($o, $k)) {
      throw "Failed";
    }
    return const jni.JStringType().fromRef($o);
  }
}

final class $ExampleType extends jni.JObjType<Example> {
  const $ExampleType();

  @override
  String get signature => r"LExample;";

  @override
  Example fromRef(jni.JObjectPtr ref) => Example.fromRef(ref);

  @override
  jni.JObjType get superType => const jni.JObjectType();

  @override
  final superCount = 1;

  @override
  int get hashCode => ($ExampleType).hashCode;

  @override
  bool operator ==(Object other) {
    return other.runtimeType == ($ExampleType) && other is $ExampleType;
  }
}
