package com.fernandez.literalura.servicio;

import com.fasterxml.jackson.annotation.JsonAlias;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fernandez.literalura.modelos.DatosLibro;

import java.util.List;

@JsonIgnoreProperties(ignoreUnknown = true)
public record RespuestaConvertida(
        @JsonAlias("results") List<DatosLibro> resultados
) {
}
