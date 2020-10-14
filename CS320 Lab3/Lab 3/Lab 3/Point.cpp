#include<math.h>

class Point
{
	private:
		float x;
		float y;
	
	public:
		Point(float x, float y){
			this -> x = x;
			this -> y = y;
		}
	
		float distance() const{
			return sqrt(x * x + y * y);
		}
};

bool operator < (const Point& lhs, const Point& rhs);
bool operator > (const Point& lhs, const Point& rhs);
bool operator >= (const Point& lhs, const Point& rhs);
bool operator <= (const Point& lhs, const Point& rhs);
bool operator != (const Point& lhs, const Point& rhs);
bool operator == (const Point& lhs, const Point& rhs);

inline bool operator < (const Point& lhs, const Point& rhs) {
	return lhs.distance() < rhs.distance();
} 

inline bool operator > (const Point& lhs, const Point& rhs) {
	return !(lhs<=rhs);
}

inline bool operator >= (const Point& lhs, const Point& rhs) {
	return !(lhs < rhs);
}

inline bool operator <= (const Point& lhs, const Point& rhs) {
	return lhs.distance() <= rhs.distance();
}

inline bool operator == (const Point& lhs, const Point& rhs) {
	return !(lhs < rhs) && !(lhs > rhs);
}

inline bool operator != (const Point& lhs, const Point& rhs) {
	return !(lhs == rhs);
}