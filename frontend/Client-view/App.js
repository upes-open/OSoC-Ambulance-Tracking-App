import React from 'react';
import { View, Text, Image, TouchableOpacity, StyleSheet } from 'react-native';
import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';
import NextPage from './NextPage'; // Import the NextPage component
import ProfileScreen from './ProfileScreen'; // Import the ProfileScreen component
import FAQScreen from './FAQScreen'; // Import the FAQScreen component

const Stack = createStackNavigator();

const HomeScreen = ({ navigation }) => {
  return (
    <View style={styles.container}>
      <View style={styles.centerContent}>
        <Text style={styles.text}>REQUEST AN AMBULANCE</Text>
        <TouchableOpacity onPress={() => navigation.navigate('Next')}>
          <Image source={require('./assets/logos/next.png')} style={styles.logo} />
        </TouchableOpacity>
      </View>
      <View style={styles.bottomLogos}>
        <TouchableOpacity onPress={() => navigation.navigate('Profile')}>
          <Image source={require('./assets/logos/profile-user.png')} style={styles.icon} />
        </TouchableOpacity>
        <TouchableOpacity onPress={() => navigation.navigate('FAQ')}>
          <Image source={require('./assets/logos/chat.png')} style={styles.icon} />
        </TouchableOpacity>
      </View>
    </View>
  );
};

const App = () => {
  return (
    <NavigationContainer>
      <Stack.Navigator initialRouteName="Home">
        <Stack.Screen name="Home" component={HomeScreen} />
        <Stack.Screen name="Next" component={NextPage} />
        <Stack.Screen name="Profile" component={ProfileScreen} />
        <Stack.Screen name="FAQ" component={FAQScreen} />
      </Stack.Navigator>
    </NavigationContainer>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: 'rgba(0, 150, 136, 1)', // Updated background color
  },
  centerContent: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    marginTop: 170,
  },
  text: {
    color: 'white', // Updated text color
    fontSize: 30,
    fontWeight: 'bold',
    marginBottom: 10,
  },
  logo: {
    width: 50,
    height: 100,
    resizeMode: 'contain',
  },
  bottomLogos: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    padding: 20,
  },
  icon: {
    width: 50,
    height: 50,
    resizeMode: 'contain',
    tintColor: 'white', // Updated icon color
  },
});

export default App;
