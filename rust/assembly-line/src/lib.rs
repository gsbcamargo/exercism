pub fn production_rate_per_hour(speed: u8) -> f64 {
    const BASE_CARS_PER_HOUR: f64 = 221.0;
    let success_rate = match speed {
        1..=4 => 1.0,
        5..=8 => 0.9,
        9 | 10 => 0.77,
        _ => 0.0,
    };

    BASE_CARS_PER_HOUR * speed as f64 * success_rate
}

pub fn working_items_per_minute(speed: u8) -> u32 {
    let cars_per_hour = production_rate_per_hour(speed);
    (cars_per_hour / 60.0) as u32
}
