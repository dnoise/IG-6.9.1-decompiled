.class public final enum Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;
.super Ljava/lang/Enum;
.source "TiltShiftMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

.field public static final enum b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

.field public static final enum c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

.field private static final synthetic f:[Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;


# instance fields
.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    const-string v1, "OFF"

    const/4 v2, -0x1

    sget v3, Lcom/facebook/au;->mode_tilt_off:I

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    .line 9
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    const-string v1, "RADIAL"

    sget v2, Lcom/facebook/au;->mode_tilt_radial_off:I

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    .line 10
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    const-string v1, "LINE"

    sget v2, Lcom/facebook/au;->mode_tilt_linear_off:I

    invoke-direct {v0, v1, v6, v4, v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    aput-object v1, v0, v5

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    aput-object v1, v0, v6

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->f:[Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->d:I

    .line 22
    iput p4, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->e:I

    .line 23
    return-void
.end method

.method public static a(I)Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;
    .locals 2
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->values()[Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 35
    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->values()[Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 36
    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->values()[Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0

    .line 34
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    return-object v0
.end method

.method public static values()[Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->f:[Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    invoke-virtual {v0}, [Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->d:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->e:I

    return v0
.end method
