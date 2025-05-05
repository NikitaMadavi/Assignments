library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration for the CMOS inverter
entity CMOS_Inverter is
    Port (
        A : in  STD_LOGIC;   -- Input signal
        Y : out STD_LOGIC    -- Output signal (inverted A)
    );
end CMOS_Inverter;

-- Architecture definition of the CMOS inverter
architecture Behavioral of CMOS_Inverter is
begin
    -- Inversion process
    process(A)
    begin
        Y <= not A;  -- Inverting the input signal
    end process;

end Behavioral;