.class final Lcom/instagram/cliffjumper/edit/photo/tiltshift/d;
.super Lcom/instagram/cliffjumper/edit/common/ui/c;
.source "TiltShiftController.java"


# instance fields
.field private final a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;


# direct methods
.method public constructor <init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->b()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/instagram/cliffjumper/edit/common/ui/c;-><init>(Ljava/lang/String;I)V

    .line 195
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/d;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    .line 196
    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/d;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    return-object v0
.end method

.method public final d()Lcom/instagram/cliffjumper/edit/common/ui/a;
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return-object v0
.end method
