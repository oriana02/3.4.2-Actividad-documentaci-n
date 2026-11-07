pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Compilando/Instalando dependencias...'
                sh 'pip3 install -r requirements.txt --break-system-packages'
            }
        }
        
        stage('Test') {
            steps {
                echo 'Ejecutando pruebas unitarias...'
                // Aquí podrías ejecutar pytest, por ahora simulamos una prueba
                sh 'python3 -m py_compile app.py'
            }
        }
        
        stage('Generate Documentation') {
            steps {
                echo 'Generando documentación con Doxygen...'
                sh 'doxygen Doxyfile'
            }
        }
        
        stage('Version Control') {
            steps {
                echo 'Actualizando repositorio con documentación...'
                // NOTA: Para que esto funcione en un pipeline real, 
                // necesitas configurar credenciales de Git en Jenkins.
                // sh 'git add docs/'
                // sh 'git commit -m "Docs: Actualización automática desde Jenkins"'
                // sh 'git push origin main'
                echo 'Simulando commit y push de la documentación...'
            }
        }
        
        stage('Deploy') {
            steps {
                echo 'Desplegando aplicación en entorno de prueba...'
                // Ejemplo: Levantar Flask en segundo plano
                sh 'nohup python3 app.py > app.log 2>&1 &'
            }
        }
    }
    
    post {
        success {
            echo 'Pipeline completado con éxito.'
        }
        failure {
            echo 'El pipeline ha fallado.'
        }
    }
}