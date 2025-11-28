DELIMITER //
CREATE FUNCTION GetTotalRegistrationFee(eventID INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE totalFee INT;
    SELECT SUM(registration_fee) INTO totalFee
    FROM contests
    WHERE event_id = eventID;

    IF totalFee IS NULL THEN
        SET totalFee = 0;
    END IF;

    RETURN totalFee;
END //
DELIMITER ;


DELIMITER //
CREATE TRIGGER trg_update_payment_status
BEFORE INSERT ON registration
FOR EACH ROW
BEGIN
    IF NEW.payment_status IS NULL THEN
        SET NEW.payment_status = 'Pending';
    END IF;
END //
DELIMITER ;


DELIMITER $$

CREATE PROCEDURE check_volunteer_availability (
    IN p_volunteer_id VARCHAR(10),
    IN p_contest_id VARCHAR(20),
    OUT p_is_available VARCHAR(50)
)
BEGIN
    DECLARE v_event_id INT DEFAULT NULL;
    DECLARE v_count INT DEFAULT 0;

    -- Label to allow early exit
    main_block: BEGIN  

        -- Check if contest exists
        IF NOT EXISTS (SELECT 1 FROM contests WHERE contest_id = p_contest_id) THEN
            SET p_is_available = 'Contest not found';
            LEAVE main_block;
        END IF;

        -- Get event ID
        SELECT event_id INTO v_event_id
        FROM contests
        WHERE contest_id = p_contest_id
        LIMIT 1;

        -- Count volunteers assigned to that event
        SELECT COUNT(*) INTO v_count
        FROM volunteers
        WHERE volunteer_id = p_volunteer_id
          AND eid = v_event_id;

        IF v_count = 0 THEN
            SET p_is_available = 'Yes';
        ELSE
            SET p_is_available = 'No';
        END IF;

    END main_block;

END$$

DELIMITER ;


SET @result = '';

CALL check_volunteer_availability('V001', 'C102', @result);

SELECT @result;



