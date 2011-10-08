//
//  RKUMasterViewController.m
//  TableView
//
//  Created by Juan Jose Karam on 10/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "RKUMasterViewController.h"
#import "Participante.h"
#import "AddViewController.h"

@implementation RKUMasterViewController

- (void)addParticipante:(id)sender {
    
    AddViewController * viewController = [[AddViewController alloc] initWithNibName:@"AddView" bundle:nil];
    
    viewController.participantes = participantes;
    
    [self presentModalViewController:viewController animated:YES];

    [viewController release];
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [self.tableView reloadData];
    
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"Participantes";
    
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    
    self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Agregar" style:UIBarButtonItemStyleBordered target:self action:@selector(addParticipante:)] autorelease];
    
    participantes = [[NSMutableArray alloc] init];
    
    Participante * participante1 = [[Participante alloc] init];
    
    [participante1 setNombre:@"Domingo"];
    [participante1 setPais:@"Guatemalteco"];
    
    
    Participante * participante2 = [[Participante alloc] init];
    
    [participante2 setNombre:@"Dorian"];
    [participante2 setPais:@"Mexico"];
    
    Participante * participante3 = [[Participante alloc] init];
    
    [participante3 setNombre:@"Hilegass"];
    [participante3 setPais:@"Estados Unidos"];
    
    [participantes addObject:participante1];
    [participantes addObject:participante2];
    [participantes addObject:participante3];
    
    [participante1 release];
    [participante2 release];
    [participante3 release];
    
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return YES;
}


- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath {
    
    [participantes exchangeObjectAtIndex:destinationIndexPath.row withObjectAtIndex:sourceIndexPath.row];
    
}



















- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    
    BOOL canEdit = YES;
    
    if(indexPath.row == 1)
    {
        canEdit = NO;
    }
    
    return canEdit;
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if(editingStyle == UITableViewCellEditingStyleDelete) {
        
        [participantes removeObjectAtIndex:indexPath.row];
        
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [participantes count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString * cellIdentifier = @"Cell";
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(!cell) {
        
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier] autorelease];
    }
    
    cell.textLabel.text = [[participantes objectAtIndex:indexPath.row] nombre];
    cell.detailTextLabel.text = [[participantes objectAtIndex:indexPath.row] pais];
    
    return cell;
}

-(void)dealloc {
    
    [participantes release];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    
    return YES;
}
@end
