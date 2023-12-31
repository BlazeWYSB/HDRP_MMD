using UnityEngine;
using UnityEngine.Rendering.HighDefinition;

// Include material common properties names
using static UnityEngine.Rendering.HighDefinition.HDMaterialProperties;

namespace UnityEditor.Rendering.HighDefinition
{
    /// <summary>The UI block that represents the surface options for decal materials.</summary>
    public class DissolveAndPerturbUIBlock : MaterialUIBlock
    {
        internal class Styles
        {
            public static GUIContent header { get; } = EditorGUIUtility.TrTextContent("Dissolve And Perturb Inputs");
            public static GUIContent perturbMapText = new GUIContent("Perturb Map", "rg is perturb");
            public static GUIContent dissolveMapText = new GUIContent("Dissolve Map", "r is Dissolve");
            public static GUIContent perturbNoiseSpeedXText = new GUIContent("perturb Noise Speed X", "perturb Noise Speed in X");
            public static GUIContent perturbNoiseSpeedYText = new GUIContent("perturb Noise Speed Y", "perturb Noise Speed in Y");
            public static GUIContent perturbRateText= new GUIContent("Perturb Rate", "Perturb Strength");
            public static GUIContent dissolveRateText = new GUIContent("Dissolve Rate", "Dissolve Rate");
            public static GUIContent perturbText = new GUIContent("Perturb", "has perturb");
            public static GUIContent dissolveText = new GUIContent("Dissolve", "has dissolve");
            public static GUIContent dissolveSoftText = new GUIContent("Is Soft Dissolve", "Enable soft lerp");

        }

        MaterialProperty perturbMap = new MaterialProperty();
        MaterialProperty dissolveMap = new MaterialProperty();
        MaterialProperty perturbNoiseSpeedX = new MaterialProperty();
        MaterialProperty perturbNoiseSpeedY = new MaterialProperty();
        MaterialProperty perturbRate = new MaterialProperty();
        MaterialProperty dissolveRate = new MaterialProperty();
        MaterialProperty perturb = new MaterialProperty();
        MaterialProperty dissolve = new MaterialProperty();
        MaterialProperty dissolveSoft = new MaterialProperty();

        /// <summary>
        /// Constructs a PGRUIBlock based on the parameters.
        /// </summary>
        /// <param name="expandableBit">Bit index used to store the foldout state.</param>
        public DissolveAndPerturbUIBlock(ExpandableBit expandableBit)
                : base(expandableBit, Styles.header)
        {
        }

        /// <summary>
        /// Loads the material properties for the block.
        /// </summary>
        public override void LoadMaterialProperties()
        {
            perturbMap = FindProperty(kPerturbMap);
            dissolveMap = FindProperty(kDissolveMap);
            perturbNoiseSpeedX = FindProperty(kPerturbNoiseSpeedX);
            perturbNoiseSpeedY = FindProperty(kPerturbNoiseSpeedY);
            perturbRate = FindProperty(kPerturbRate);
            dissolveRate = FindProperty(kDissolveRate);
            perturb = FindProperty(kPerturb);
            dissolve = FindProperty(kDissolve);
            dissolveSoft = FindProperty(kDissolveSoft);
        }

        /// <summary>
        /// Renders the properties in the block.
        /// </summary>
        protected override void OnGUIOpen()
        {

            if (perturb != null)
                materialEditor.ShaderProperty(perturb, Styles.perturbText);
            if (perturb.floatValue != 0)
            {
                if (perturbMap != null)
                    materialEditor.ShaderProperty(perturbMap, Styles.perturbMapText);
                if (perturbNoiseSpeedX != null)
                    materialEditor.ShaderProperty(perturbNoiseSpeedX, Styles.perturbNoiseSpeedXText);
                if (perturbNoiseSpeedY != null)
                    materialEditor.ShaderProperty(perturbNoiseSpeedY, Styles.perturbNoiseSpeedYText);
                if (perturbRate != null)
                    materialEditor.ShaderProperty(perturbRate, Styles.perturbRateText);
            }
            if (dissolve != null)
                materialEditor.ShaderProperty(dissolve, Styles.dissolveText);
            if (dissolve.floatValue != 0)
            {
                if (dissolveSoft != null)
                    materialEditor.ShaderProperty(dissolveSoft, Styles.dissolveSoftText);
                if (dissolveMap != null)
                    materialEditor.ShaderProperty(dissolveMap, Styles.dissolveMapText);
                if (dissolveRate != null)
                    materialEditor.ShaderProperty(dissolveRate, Styles.dissolveRateText);
            }

        }
    }
}
