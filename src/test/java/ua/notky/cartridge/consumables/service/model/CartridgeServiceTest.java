package ua.notky.cartridge.consumables.service.model;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import ua.notky.cartridge.consumables.model.Cartridge;
import ua.notky.cartridge.consumables.service.AbstractTestService;
import ua.notky.cartridge.consumables.util.exception.IllegalEntityException;
import ua.notky.cartridge.consumables.util.exception.NotFoundDataException;

import java.util.Arrays;

import static org.junit.jupiter.api.Assertions.*;
import static ua.notky.cartridge.consumables.tools.data.model.CartridgeTool.*;

public class CartridgeServiceTest extends AbstractTestService {
    @Autowired
    CartridgeService service;

    @Test
    @Transactional
    void create() {
        Cartridge newCartridge = getNew();

        Cartridge result = service.create(newCartridge);
        assertEquals(newCartridge, result);

        int newCartridgeId = result.getId();
        assertEquals(service.get(newCartridgeId), newCartridge);
    }

    @Test
    void createIllegalArgument(){
        assertThrows(IllegalArgumentException.class, () -> service.create(null));
    }

    @Test
    void createIllegalEntity(){
        assertThrows(IllegalEntityException.class, () -> service.create(getUpdated(CARTRIDGE_2)));
    }

    @Test
    void update() {
        Cartridge updated = getUpdated(CARTRIDGE_2);

        assertEquals(service.update(updated), updated);
        assertEquals(service.get(updated.getId()), updated);
    }

    @Test
    @Transactional
    void updateIllegalArgument(){
        assertThrows(IllegalArgumentException.class, () -> service.create(null));
    }

    @Test
    @Transactional
    void updateIllegalEntity(){
        assertThrows(IllegalEntityException.class, () -> service.update(getNew()));
    }

    @Test
    void get() {
        assertEquals(service.get(ID_CARTRIDGE_2), CARTRIDGE_2);
        assertNotEquals(service.get(ID_CARTRIDGE_2), CARTRIDGE_3);
    }

    @Test
    void getNotFound(){
        assertThrows(NotFoundDataException.class, () -> service.get(INVALID_ID));
    }

    @Test
    @Transactional
    void delete() {
        service.delete(ID_CARTRIDGE_2);
        assertIterableEquals(service.getAll(),
                Arrays.asList(CARTRIDGE_1, CARTRIDGE_3, CARTRIDGE_4, CARTRIDGE_5));

    }

    @Test
    @Transactional
    void deleteNotFound(){
        assertThrows(NotFoundDataException.class, () -> service.delete(INVALID_ID));
    }

    @Test
    void getAll() {
        assertIterableEquals(service.getAll(), CARTRIDGES);
    }

}
