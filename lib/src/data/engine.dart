// ignore_for_file: constant_identifier_names

import 'dart:core';

enum EngineType {
  diffusion_v1('stable-diffusion-v1'),
  diffusion_v1_5('stable-diffusion-v1-5'),
  diffusion_512_v2_0('stable-diffusion-512-v2-0'),
  diffusion_768_v2_0('stable-diffusion-768-v2-0'),
  diffusion_512_v2_1('stable-diffusion-512-v2-1'),
  diffusion_768_v2_1('stable-diffusion-768-v2-1'),
  inpainting_v1_0('stable-inpainting-v1-0'),
  inpainting_v2_0('stable-inpainting-512-v2-0'),
  diffusion_xl('stable-diffusion-xl-beta-v2-2-2');

  const EngineType(
    this.id,
  );

  final String id;
}
