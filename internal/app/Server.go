package app

import (
	log "github.com/sirupsen/logrus"
	logger "github.com/vehsamrak/go-roguelike-web/internal/log"
)

type Server struct {
}

func (server Server) Start() {
	log.SetFormatter(&logger.TextFormatter{})
}
