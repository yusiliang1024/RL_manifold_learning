%% Main Entry Point for RL + Manifold System Identification
clear all; close all; clc;

addpath(genpath('./RL_module'));
addpath(genpath('./Manifold_module'));
addpath(genpath('./Nonlinear_System'));
addpath(genpath('./Integration'));

disp('=================================================');
disp('RL + Manifold System Identification Framework');
disp('=================================================');

% 配置参数
config = struct();
config.system.dim_state = 3;
config.system.dim_action = 2;
config.system.dim_observation = 5;
config.rl.learning_rate = 1e-3;
config.rl.discount_factor = 0.99;
config.rl.batch_size = 32;
config.rl.num_episodes = 1000;
config.rl.max_steps_per_episode = 500;
config.manifold.target_dimension = 3;
config.manifold.num_neighbors = 10;
config.manifold.algorithm = 'isomap';
config.data.num_trajectories = 50;
config.data.trajectory_length = 200;

disp('System initialized...');
