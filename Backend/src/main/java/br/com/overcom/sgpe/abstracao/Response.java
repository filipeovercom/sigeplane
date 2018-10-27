package br.com.overcom.sgpe.abstracao;

import lombok.Getter;

import java.util.List;

@Getter
public class Response<T> {

	private T            data;
	private List<String> errors;

	public Response(T data) {
		this.data = data;
	}

	public Response(List<String> errors) {
		this.errors = errors;
	}

}
