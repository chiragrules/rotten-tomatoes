//
//  MovieViewController.m
//  rotten-tomatoes
//
//  Created by Chirag Davé on 6/6/14.
//  Copyright (c) 2014 Chirag Davé. All rights reserved.
//

#import "MovieViewController.h"
#import "PosterImageView.h"
#import "Movie.h"

@interface MovieViewController ()
@property (weak, nonatomic) IBOutlet PosterImageView *posterImage;
@property (weak, nonatomic) IBOutlet UILabel *movieLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;

@property (nonatomic, weak) Movie *movie;

@end

@implementation MovieViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithMovie:(Movie *)movie {
    self = [super init];
    if (self) {
        self.movie = movie;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = self.movie.title;
    self.movieLabel.text = self.movie.title;
    self.synopsisLabel.text = self.movie.synopsis;
    
    [self.posterImage setImageWithURL:[self.movie getProfilePosterURL]];
    [self.posterImage setImageWithURL:[self.movie getDetailedPosterURL] placeholderImage:self.posterImage.image];
    
    [self.posterImage fadeIn];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
