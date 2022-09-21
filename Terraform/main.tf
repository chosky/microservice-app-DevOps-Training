resource "aws_instance" "frontend_josehenaoo_rampup" {
	ami                    = var.ami
	instance_type          = var.instance_type
  vpc_security_group_ids = [ aws_security_group.frontend_sg.id, aws_security_group.bastion_sg.id ]
  subnet_id              = var.public_subnet_id
  key_name               = var.ssh_key

  volume_tags = {
    project     = var.project
    responsible = var.responsible
  }

  tags = {
		Name        = "frontend_josehenaoo_rampup"
    project     = var.project
    responsible = var.responsible
	}
}

resource "aws_instance" "jenkins_josehenaoo_rampup" {
	ami                    = var.ami
	instance_type          = var.instance_type
  vpc_security_group_ids = [ aws_security_group.jenkins_sg.id, aws_security_group.bastion_sg.id ]
  subnet_id              = var.public_subnet_id
  key_name               = var.ssh_key

  volume_tags = {
    project     = var.project
    responsible = var.responsible
  }

  tags = {
		Name        = "jenkins_josehenaoo_rampup"
    project     = var.project
    responsible = var.responsible
	}
}

resource "aws_instance" "bastion_josehenaoo_rampup" {
	ami                    = var.ami
	instance_type          = var.instance_type
  vpc_security_group_ids = [ aws_security_group.bastion_sg.id ]
  subnet_id              = var.public_subnet_id
  key_name               = var.ssh_key
  
  volume_tags = {
    project     = var.project
    responsible = var.responsible
  }

  tags = {
		Name        = "bastion_josehenaoo_rampup"
    project     = var.project
    responsible = var.responsible
	}
}

resource "aws_instance" "auth_api_josehenaoo_rampup" {
	ami                    = var.ami
	instance_type          = var.instance_type
  vpc_security_group_ids = [ aws_security_group.auth_api_sg.id, aws_security_group.bastion_sg.id ]
  subnet_id              = var.private_subnet_id
  key_name               = var.ssh_key
  
  volume_tags = {
    project     = var.project
    responsible = var.responsible
  }

  tags = {
		Name        = "auth_api_josehenaoo_rampup"
    project     = var.project
    responsible = var.responsible
	}
}

resource "aws_instance" "users_api_josehenaoo_rampup" {
	ami                    = var.ami
	instance_type          = var.instance_type
  vpc_security_group_ids = [ aws_security_group.users_api_sg.id, aws_security_group.bastion_sg.id ]
  subnet_id              = var.private_subnet_id
  key_name               = var.ssh_key
  
  volume_tags = {
    project     = var.project
    responsible = var.responsible
  }

  tags = {
		Name        = "users_api_josehenaoo_rampup"
    project     = var.project
    responsible = var.responsible
	}
}

resource "aws_instance" "log_message_processor_josehenaoo_rampup" {
	ami                    = var.ami
	instance_type          = var.instance_type
  vpc_security_group_ids = [ aws_security_group.log_message_processor_sg.id, aws_security_group.bastion_sg.id ]
  subnet_id              = var.private_subnet_id
  key_name               = var.ssh_key
  
  volume_tags = {
    project     = var.project
    responsible = var.responsible
  }

  tags = {
		Name        = "log_message_processor_josehenaoo_rampup"
    project     = var.project
    responsible = var.responsible
	}
}

resource "aws_instance" "todos_api_josehenaoo_rampup" {
	ami                    = var.ami
	instance_type          = var.instance_type
  vpc_security_group_ids = [ aws_security_group.todos_api_sg.id, aws_security_group.bastion_sg.id ]
  subnet_id              = var.private_subnet_id
  key_name               = var.ssh_key
  
  volume_tags = {
    project     = var.project
    responsible = var.responsible
  }

  tags = {
		Name        = "todos_api_josehenaoo_rampup"
    project     = var.project
    responsible = var.responsible
	}
}

resource "aws_instance" "redis_josehenaoo_rampup" {
	ami                    = var.ami
	instance_type          = var.instance_type
  vpc_security_group_ids = [ aws_security_group.redis_sg.id, aws_security_group.bastion_sg.id ]
  subnet_id              = var.private_subnet_id
  key_name               = var.ssh_key
  
  volume_tags = {
    project     = var.project
    responsible = var.responsible
  }

  tags = {
		Name        = "redis_josehenaoo_rampup"
    project     = var.project
    responsible = var.responsible
	}
}
