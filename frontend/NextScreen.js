import React from 'react';
import { View, Text, StyleSheet } from 'react-native';

const NextPage = () => {
  return (
    <View style={styles.container}>
      <View style={styles.rectangle}>
        <Text style={styles.rectangleText}>Rectangle 1</Text>
      </View>
      <View style={styles.rectangle}>
        <Text style={styles.rectangleText}>Rectangle 2</Text>
      </View>
      <View style={styles.rectangle}>
        <Text style={styles.rectangleText}>Rectangle 3</Text>
      </View>
      <View style={styles.rectangle}>
        <Text style={styles.rectangleText}>Rectangle 4</Text>
      </View>
      <View style={styles.rectangle}>
        <Text style={styles.rectangleText}>Rectangle 5</Text>
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  rectangle: {
    width: 300,
    height: 80,
    backgroundColor: 'blue',
    marginVertical: 25,
    justifyContent: 'center',
    alignItems: 'center',
  },
  rectangleText: {
    color: 'white',
    fontSize: 16,
  },
});

export default NextPage;

