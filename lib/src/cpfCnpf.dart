part of flux_validator.src;

bool validatorCpfCnpf(value) {
  return validatorCnpj(value) || validatorCpf(value);
}
