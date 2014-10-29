.class final Lcom/instagram/creation/video/f/x;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/a;


# direct methods
.method private constructor <init>(Lcom/instagram/creation/video/f/a;)V
    .locals 0
    .parameter

    .prologue
    .line 1950
    iput-object p1, p0, Lcom/instagram/creation/video/f/x;->a:Lcom/instagram/creation/video/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/creation/video/f/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1950
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/x;-><init>(Lcom/instagram/creation/video/f/a;)V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1959
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/instagram/creation/video/f/x;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->g(Lcom/instagram/creation/video/f/a;)V

    .line 1955
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 1963
    return-void
.end method
