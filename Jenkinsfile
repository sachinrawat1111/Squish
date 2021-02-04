pipeline {
    agent 
    { 
        dockerfile true
    }
    stages {
        stage('Test') {
            steps {
                echo 'App build'
            }
        }
        stage('Squish'){
        steps{
        squish([squishPackageName: 'Squish', testSuite: '/home/sachin/Squish/App'])
    }
}
