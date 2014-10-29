.class final Lcom/instagram/ui/f/e;
.super Ljava/lang/Object;
.source "PopupWindowController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/ui/f/b;


# direct methods
.method private constructor <init>(Lcom/instagram/ui/f/b;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/instagram/ui/f/e;->a:Lcom/instagram/ui/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/ui/f/b;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/instagram/ui/f/e;-><init>(Lcom/instagram/ui/f/b;)V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/instagram/ui/f/e;->a:Lcom/instagram/ui/f/b;

    invoke-static {v0}, Lcom/instagram/ui/f/b;->b(Lcom/instagram/ui/f/b;)V

    .line 238
    return-void
.end method
