import { aws_eks } from 'aws-cdk-lib';
import { ILayerVersion } from 'aws-cdk-lib/aws-lambda';
import { Construct } from 'constructs/lib/construct';
import { KubectlV24Layer } from '@aws-cdk/lambda-layer-kubectl-v24';
import { KubectlV25Layer } from '@aws-cdk/lambda-layer-kubectl-v25';
import { KubectlV26Layer } from '@aws-cdk/lambda-layer-kubectl-v26';
import { KubectlV27Layer } from '@aws-cdk/lambda-layer-kubectl-v27';
import { KubectlV28Layer } from '@aws-cdk/lambda-layer-kubectl-v28';
import { KubectlV29Layer } from '@aws-cdk/lambda-layer-kubectl-v29';
import { KubectlV30Layer } from '@aws-cdk/lambda-layer-kubectl-v30';
import { KubectlV31Layer } from '@aws-cdk/lambda-layer-kubectl-v31';

export function GetLayer(
  scope: Construct,
  k8sVersion: aws_eks.KubernetesVersion
): ILayerVersion {
  switch (k8sVersion.version) {
    case '1.24':
      return new KubectlV24Layer(scope, 'v24Layer');
    case '1.25':
      return new KubectlV25Layer(scope, 'v25Layer');
    case '1.26':
      return new KubectlV26Layer(scope, 'v26Layer');
    case '1.27':
      return new KubectlV27Layer(scope, 'v27Layer');
    case '1.28':
      return new KubectlV28Layer(scope, 'v28Layer');
    case '1.29':
      return new KubectlV29Layer(scope, 'v29Layer');
    case '1.30':
      return new KubectlV30Layer(scope, 'v30Layer');
    case '1.31':
      return new KubectlV31Layer(scope, 'v31Layer');
    default:
      throw new Error(`invalid kubernetes version: ${k8sVersion.version}`);
  }
}
