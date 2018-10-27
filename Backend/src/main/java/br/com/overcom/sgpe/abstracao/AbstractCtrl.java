package br.com.overcom.sgpe.abstracao;

import br.com.overcom.sgpe.utilidades.CtrlUtils;
import com.google.common.collect.Maps;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;
import java.util.Map;
import java.util.UUID;

public class AbstractCtrl<T extends AbstractEntity> {

	private AbstractService<T> service;

	public AbstractCtrl(AbstractService<T> service) {
		this.service = service;
	}

	@GetMapping("/all")
	public ResponseEntity<Response<Page<T>>> getAllRecords(Pageable pageable) {
		return ResponseEntity.ok(new Response<>(service.findAll(pageable)));
	}

	@GetMapping(path = "/{uuid}")
	public ResponseEntity getRecordByID(@PathVariable UUID uuid) {
		return service
			.findByUUID(uuid)
			.map(CtrlUtils::sendOk)
			.orElseGet(CtrlUtils::sendNoContent);
	}

	@PostMapping
	public ResponseEntity saveNewRecord(@Valid @RequestBody T record, BindingResult result) {
		if (result.hasErrors()) return CtrlUtils.sendBadRequest(result);
		try {
			return CtrlUtils.sendOk(service.insert(record));
		} catch (NegocioException e) {
			return CtrlUtils.sendBadRequest(e.getMessage());
		}
	}

	@PutMapping
	public ResponseEntity updateRecord(@Valid @RequestBody T record, BindingResult result) {
		if (result.hasErrors()) return CtrlUtils.sendBadRequest(result);
		try {
			return CtrlUtils.sendOk(service.update(record));
		} catch (NegocioException e) {
			return CtrlUtils.sendBadRequest(e.getMessage());
		}
	}

	@DeleteMapping(path = "/{uuid}")
	public @ResponseBody
	Map<String, Object> deleteRecord(@PathVariable UUID uuid) {
		try {
			service.removeById(uuid);
			Map<String, Object> response = Maps.newHashMap();
			response.put("success", true);
			return response;
		} catch (Exception e) {
			Map<String, Object> response = Maps.newHashMap();
			response.put("success", false);
			return response;
		}
	}
}


