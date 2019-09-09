#[no_mangle]
pub extern "C" fn bitcoder_add(l: i32, r: i32) -> i32 {
    l + r
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn it_works() {
        assert_eq!(bitcoder_add(1, 2), 3);
    }
}
