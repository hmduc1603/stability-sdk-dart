import 'package:stability_sdk/src/data/config.dart';
import 'package:stability_sdk/src/data/engine.dart';

import '../protos/generation.pb.dart' as pb;

import 'package:fixnum/fixnum.dart' as $fixnum;

class RequestBuilder {
  final String prompt;
  int height = Config.height;
  int width = Config.width;
  int samples = Config.samples;
  int steps = Config.steps;
  String engineType = DefaultEngineType.inpainting_v2_0;

  RequestBuilder(this.prompt);

  RequestBuilder setHeight(int height) {
    this.height = height;
    return this;
  }

  RequestBuilder setWidth(int width) {
    this.width = width;
    return this;
  }

  RequestBuilder setSampleCount(int samples) {
    this.samples = samples;
    return this;
  }

  RequestBuilder setUpSteps(int? steps) {
    if (steps != null) {
      this.steps = steps;
    }
    return this;
  }

  RequestBuilder setEngineType(String? engineType) {
    if (engineType != null) {
      this.engineType = engineType;
    }
    return this;
  }

  pb.Request build() {
    final image = pb.ImageParameters(
      height: $fixnum.Int64(height),
      width: $fixnum.Int64(width),
      samples: $fixnum.Int64(samples),
      steps: $fixnum.Int64(samples),
    );
    final request = pb.Request(
      image: image,
      prompt: [
        pb.Prompt(
          text: prompt,
        ),
      ],
      engineId: engineType,
    );
    return request;
  }
}
