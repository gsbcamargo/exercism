pub struct User(String, u32, f32);

impl User {
    pub fn new(name: String, age: u32, weight: f32) -> Self {
        Self(name, age, weight)
}

    pub fn name(&self) -> &str {
        &self.0
    }

    pub fn age(&self) -> u32 {
        self.1
    }

    pub fn weight(&self) -> f32 {
        self.2
    }

    pub fn set_age(&mut self, new_age: u32) {
        self.1 = new_age
    }

    pub fn set_weight(&mut self, new_weight: f32) {
        self.2 = new_weight
    }
}
