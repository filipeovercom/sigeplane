package br.com.overcom.sgpe.abstracao;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.io.Serializable;
import java.util.UUID;

@Data
@AllArgsConstructor
public class AbstractDTO implements Serializable {
	private UUID uuid;
}
