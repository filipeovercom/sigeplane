package br.com.overcom.sgpe.abstracao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.Optional;
import java.util.UUID;

public abstract class AbstractService<T extends AbstractEntity> {

	private AbstractRepository<T> repository;

	public AbstractService(AbstractRepository<T> repository) {
		this.repository = repository;
	}

	public Page<T> findAll(Pageable pageable) {
		return repository.findAll(pageable);
	}

	public Optional<T> findByID(Long id) {
		return repository.findById(id);
	}

	public abstract Optional<T> findByUUID(UUID uuid);

	public T insert(T record) throws NegocioException {
		return repository.saveAndFlush(record);
	}

	public T update(T record) throws NegocioException {
		return repository.save(record);
	}

	public void remove(T entity) throws NegocioException {
		entity.setDeleted(false);
		update(entity);
	}

	public void removeById(Long id) throws NegocioException {
		Optional<T> entity = repository.findById(id);
		if (entity.isPresent()) {
			T entityFound = entity.get();
			entityFound.setDeleted(false);
			update(entityFound);
		}
	}

	public void removeById(UUID uuid) throws NegocioException {
		Optional<T> entity = this.findByUUID(uuid);
		if (entity.isPresent()) {
			T entityFound = entity.get();
			entityFound.setDeleted(false);
			update(entityFound);
		}
	}
}
