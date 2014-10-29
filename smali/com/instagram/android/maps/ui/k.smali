.class final Lcom/instagram/android/maps/ui/k;
.super Ljava/lang/Object;
.source "IgMapsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/ui/j;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/j;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/instagram/android/maps/ui/k;->a:Lcom/instagram/android/maps/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/instagram/android/maps/ui/k;->a:Lcom/instagram/android/maps/ui/j;

    iget-object v0, v0, Lcom/instagram/android/maps/ui/j;->a:Lcom/instagram/android/maps/ui/i;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->invalidate()V

    .line 168
    return-void
.end method
