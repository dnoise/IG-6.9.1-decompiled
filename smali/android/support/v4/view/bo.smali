.class final Landroid/support/v4/view/bo;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# instance fields
.field final synthetic a:Landroid/support/v4/view/ViewPager;


# direct methods
.method private constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 2847
    iput-object p1, p0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/ViewPager;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2847
    invoke-direct {p0, p1}, Landroid/support/v4/view/bo;-><init>(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 2850
    iget-object v0, p0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()V

    .line 2851
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 2854
    iget-object v0, p0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()V

    .line 2855
    return-void
.end method
