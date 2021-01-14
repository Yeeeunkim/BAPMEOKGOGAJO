package com.kh.bob.shop.model.vo;

public class ShopMenu {
	
		private String MenuName;
		private String MenuPrice;
		private int MenuCate;
		
		public ShopMenu() {}

		public ShopMenu(String menuName, String menuPrice, int menuCate) {
			super();
			MenuName = menuName;
			MenuPrice = menuPrice;
			MenuCate = menuCate;
		}

		public String getMenuName() {
			return MenuName;
		}

		public void setMenuName(String menuName) {
			MenuName = menuName;
		}

		public String getMenuPrice() {
			return MenuPrice;
		}

		public void setMenuPrice(String menuPrice) {
			MenuPrice = menuPrice;
		}

		public int getMenuCate() {
			return MenuCate;
		}

		public void setMenuCate(int menuCate) {
			MenuCate = menuCate;
		}

		@Override
		public String toString() {
			return "ShopMenu [MenuName=" + MenuName + ", MenuPrice=" + MenuPrice + ", MenuCate=" + MenuCate + "]";
		}
		
		
		
		
		
}
