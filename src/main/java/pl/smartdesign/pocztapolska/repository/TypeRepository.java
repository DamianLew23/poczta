package pl.smartdesign.pocztapolska.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.smartdesign.pocztapolska.model.Type;

@Repository
public interface TypeRepository extends JpaRepository<Type, Long> {
    Type findFirstByShortcut(String shortcut);
}
